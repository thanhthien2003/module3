package service;

import model.NoiXuaXu;
import repository.INoiXuatXuRepository;
import repository.NoiXuatXuRepository;

import java.util.List;

public class NoiXuatXuService implements INoiXuatXuService{
    INoiXuatXuRepository noiXuatXuRepository = new NoiXuatXuRepository();
    @Override
    public List<NoiXuaXu> display() {
        return noiXuatXuRepository.display();
    }
}
